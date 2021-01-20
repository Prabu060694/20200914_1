Imports System
Imports System.Data
Imports System.Web.Security
Imports System.Collections.Generic
Imports Ganges33.Ganges33.dao
Imports Ganges33.Ganges33.model
Imports Ganges33.Ganges33.logic
Public Class ScDsrControl
    Dim _Expflddtl As Export_File_Details = New Export_File_Details()
    Public Function SelectScDsr(ByVal queryParams As ScDsrModel) As DataTable

        Log4NetControl.ComInfoLogWrite(Log4NetControl.UserID)
        Dim dbConn As DBUtility = New DBUtility()
        Dim dt As DataTable = New DataTable()
        Dim sqlStr As String = "SELECT "
        sqlStr = sqlStr & " ServiceOrder_No as 'Service Order No',	LastUpdt_user as 'Last Updated User',	Billinb_user as 'Billing User',	LEFT(CONVERT(VARCHAR, Billing_date, 103), 10) as 'Billing Date',	GoodsDelivered_date as 'Goods Delivered Date',	Branch_name as 'Branch Name',	Engineer,		Product_1,	Product_2,	IW_Labor,	IW_Parts,	IW_Transport,	IW_Others,	IW_Tax,	IW_total,	OW_Labor,	OW_Parts,	OW_Transport,	OW_Others,	OW_Tax	OW_total  "
        sqlStr = sqlStr & "FROM "
        sqlStr = sqlStr & "SC_DSR "
        sqlStr = sqlStr & "WHERE "
        sqlStr = sqlStr & "DELFG=0 "

        If Not String.IsNullOrEmpty(queryParams.ShipToBranch) Then
            sqlStr = sqlStr & "AND Branch_name = @ShipToBranch "
            dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@ShipToBranch", queryParams.ShipToBranch))
        End If

        If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
            sqlStr = sqlStr & "AND LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) >= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo "
            'sqlStr = sqlStr & "AND INVOICE_DATE >= @DateFrom and INVOICE_DATE <= @DateTo "
            dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
            dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
        ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
            'sqlStr = sqlStr & "AND LEFT(CONVERT(VARCHAR, INVOICE_DATE, 111), 10) = @DateFrom "
            sqlStr = sqlStr & "AND Billing_date = @DateFrom "
            dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
        ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
            sqlStr = sqlStr & "AND Billing_date = @DateTo "
            'sqlStr = sqlStr & "AND LEFT(CONVERT(VARCHAR, INVOICE_DATE, 111), 10) = @DateTo "
            dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))

            'sqlStr = sqlStr & "AND LEFT(CONVERT(VARCHAR, INVOICE_DATE, 111), 10) = @DateFrom "
            sqlStr = sqlStr & "GROUP BY Branch_name; "

        End If


        Dim _DataTable As DataTable = dbConn.GetDataSet(sqlStr)
        dbConn.CloseConnection()
        Return _DataTable
    End Function

    'Public Function StoreManagement_drsCounts(ByVal queryParams As ScDsrModel) As DataTable

    '    Log4NetControl.ComInfoLogWrite(Log4NetControl.UserID)
    '    Dim dbConn As DBUtility = New DBUtility()
    '    Dim dt As DataTable = New DataTable()
    '    Dim sqlStr As String = "SELECT "
    '    sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
    '    sqlStr = sqlStr & "as IW_goods_total, "
    '    sqlStr = sqlStr & "SUM (ow_goods_total) "
    '    sqlStr = sqlStr & "as OW_goods_total, "
    '    sqlStr = sqlStr & "SUM (iw_goods_total) "
    '    sqlStr = sqlStr & "+ "
    '    sqlStr = sqlStr & "SUM (ow_goods_total)"
    '    sqlStr = sqlStr & "as TotalGoods "
    '    sqlStr = sqlStr & "FROM "
    '    sqlStr = sqlStr & "SC_DSR_info "
    '    sqlStr = sqlStr & "WHERE "
    '    sqlStr = sqlStr & "Branch_name "
    '    sqlStr = sqlStr & "IN "


    '    If Not String.IsNullOrEmpty(queryParams.BranchName) Then
    '        dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", queryParams.BranchName))
    '        sqlStr = sqlStr & "(" & queryParams.BranchName & ") "
    '    End If
    '    If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
    '        sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name;"

    '        dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
    '        dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
    '    ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
    '        dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
    '    ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
    '        dbConn.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))

    '    End If
    '    Dim _DataTable As DataTable = dbConn.GetDataSet(sqlStr)
    '    dbConn.CloseConnection()
    '    Return _DataTable

    'End Function

    Public Function StoreManagement_drsCounts(ByVal queryParams As ScDsrModel) As DataTable
        Log4NetControl.ComInfoLogWrite(Log4NetControl.UserID)
        Dim _DataTable As DataTable = New DataTable()
        Dim sqlStr As String
        Dim listquery As New List(Of String)
        Dim SplitBrances As String() = queryParams.BranchName.Split(New Char() {","c})
        For Each branch As String In SplitBrances

            Dim dbConn1 As DBUtility = New DBUtility()
            Dim branchname As String = branch.Replace("'", "")
            sqlStr = "SELECT "
            sqlStr = sqlStr & " IsShipCodeChanged from M_ship_base "
            If Not String.IsNullOrEmpty(branchname) Then
                sqlStr = sqlStr & " where ship_name= @ship_name"

                dbConn1.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@ship_name", branchname))
            End If

            Dim _dtGetIsShipCodeChanged As DataTable = New DataTable()
            _dtGetIsShipCodeChanged = dbConn1.GetDataSet(sqlStr)
            dbConn1.sqlCmd.Parameters.Clear()
            dbConn1.CloseConnection()

            sqlStr = ""


            If _dtGetIsShipCodeChanged.Rows(0)("IsShipCodeChanged") = "0" Then
                Dim dbConn2 As DBUtility = New DBUtility()
                sqlStr = "select  Format( dateadd(day,-1, cast(datefrom as date)),'yyyy/MM/dd') as datefrom from M_ship_base_code_change_trn where ship_name_new= @ship_name_new "
                If Not String.IsNullOrEmpty(branchname) Then
                    dbConn2.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@ship_name_new ", branchname))
                End If
                Dim _dtDateFrom As DataTable = New DataTable()
                _dtDateFrom = dbConn2.GetDataSet(sqlStr)
                dbConn2.sqlCmd.Parameters.Clear()
                dbConn2.CloseConnection()

                sqlStr = ""

                If (_dtDateFrom.Rows.Count > 0) Then
                    Dim GetPreviousDate As String = _dtDateFrom.Rows(0)("datefrom")
                    If queryParams.DateFrom <= GetPreviousDate And queryParams.DateTo <= GetPreviousDate Then
                        'no need to combine
                        sqlStr = sqlStr & "select  Branch_name, SUM(IW_goods_total) "
                        sqlStr = sqlStr & "as IW_goods_total, "
                        sqlStr = sqlStr & "SUM (ow_goods_total) "
                        sqlStr = sqlStr & "as OW_goods_total, "
                        sqlStr = sqlStr & "SUM (iw_goods_total) "
                        sqlStr = sqlStr & "+ "
                        sqlStr = sqlStr & "SUM (ow_goods_total)"
                        sqlStr = sqlStr & "as TotalGoods "
                        sqlStr = sqlStr & "FROM "
                        sqlStr = sqlStr & "SC_DSR_info "
                        sqlStr = sqlStr & "WHERE "
                        sqlStr = sqlStr & "Branch_name = @Branch_name "
                        Dim dbConn3 As DBUtility = New DBUtility()
                        If Not String.IsNullOrEmpty(branchname) Then
                            dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name", branchname))
                        End If
                        If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                            sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                            dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                        ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                            dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                        ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                            dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                        End If
                        Dim _dt1 As DataTable = New DataTable()
                        _dt1 = dbConn3.GetDataSet(sqlStr)
                        dbConn3.CloseConnection()
                        _DataTable.Merge(_dt1)

                    ElseIf queryParams.DateFrom > GetPreviousDate And queryParams.DateTo > GetPreviousDate Then
                        'bharathirajaa
                        'logic for skipping t
                        Dim GetPreviousMonth As Integer

                        GetPreviousMonth = Convert.ToDateTime(queryParams.DateFrom).Month




                    ElseIf queryParams.DateTo >= GetPreviousDate And queryParams.DateFrom <= GetPreviousDate Then
                        If GetPreviousDate = queryParams.DateTo Then
                            'not combined
                            sqlStr = sqlStr & "select  Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name "
                            Dim dbConn3 As DBUtility = New DBUtility()
                            If Not String.IsNullOrEmpty(branchname) Then
                                dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name", branchname))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                                dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                                dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn3.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            End If
                            Dim _dt1 As DataTable = New DataTable()
                            _dt1 = dbConn3.GetDataSet(sqlStr)
                            dbConn3.CloseConnection()
                            _DataTable.Merge(_dt1)
                            sqlStr = ""

                        Else
                            'from to middate

                            sqlStr = "SELECT "
                            sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name  "

                            Dim dbConn4 As DBUtility = New DBUtility()
                            If Not String.IsNullOrEmpty(queryParams.BranchName) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", branchname))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(GetPreviousDate)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", GetPreviousDate))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(GetPreviousDate) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", GetPreviousDate))
                            End If

                            Dim _dt2 As DataTable = New DataTable()
                            _dt2 = dbConn4.GetDataSet(sqlStr)
                            dbConn4.CloseConnection()
                            _DataTable.Merge(_dt2)
                            sqlStr = ""

                        End If
                    End If

                Else 'as usual
                    sqlStr = "SELECT "
                    sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                    sqlStr = sqlStr & "as IW_goods_total, "
                    sqlStr = sqlStr & "SUM (ow_goods_total) "
                    sqlStr = sqlStr & "as OW_goods_total, "
                    sqlStr = sqlStr & "SUM (iw_goods_total) "
                    sqlStr = sqlStr & "+ "
                    sqlStr = sqlStr & "SUM (ow_goods_total)"
                    sqlStr = sqlStr & "as TotalGoods "
                    sqlStr = sqlStr & "FROM "
                    sqlStr = sqlStr & "SC_DSR_info "
                    sqlStr = sqlStr & "WHERE "
                    sqlStr = sqlStr & "Branch_name = @Branch_name  "

                    Dim dbConn4 As DBUtility = New DBUtility()
                    If Not String.IsNullOrEmpty(queryParams.BranchName) Then
                        dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", branchname))
                    End If
                    If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                        sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                        dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                        dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                    ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                        dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                    ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                        dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                    End If

                    Dim _dt2 As DataTable = New DataTable()
                    _dt2 = dbConn4.GetDataSet(sqlStr)
                    dbConn4.CloseConnection()
                    _DataTable.Merge(_dt2)

                    sqlStr = ""

                End If

            Else
                sqlStr = ""

                Dim dbConn2 As DBUtility = New DBUtility()
                sqlStr = "select  ship_name,ship_code,ship_name_new,ship_code_new,Format( dateadd(day,-1, cast(datefrom as date)),'yyyy/MM/dd') as datefrom,Format(datefrom ,'yyyy/MM/dd') as EffectiveDate from M_ship_base_code_change_trn where ship_name= @ship_name "
                If Not String.IsNullOrEmpty(branchname) Then
                    dbConn2.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@ship_name ", branchname))
                End If
                Dim _dtDateFrom As DataTable = New DataTable()
                _dtDateFrom = dbConn2.GetDataSet(sqlStr)
                dbConn2.sqlCmd.Parameters.Clear()
                dbConn2.CloseConnection()

                sqlStr = ""


                If (_dtDateFrom.Rows.Count > 0) Then
                    Dim GetPreviousDate As String = _dtDateFrom.Rows(0)("datefrom")
                    Dim EffectiveDate As String = _dtDateFrom.Rows(0)("EffectiveDate")
                    Dim ShipNameNew As String = _dtDateFrom.Rows(0)("ship_name_new")


                    If queryParams.DateFrom > GetPreviousDate And queryParams.DateTo > GetPreviousDate Then
                        Dim GetPreviousMonth As Integer
                        Dim ToDateMonth As Integer
                        GetPreviousMonth = Convert.ToDateTime(GetPreviousDate).Month
                        ToDateMonth = Convert.ToDateTime(queryParams.DateTo).Month
                        If ToDateMonth > GetPreviousMonth Then
                            'combined data
                            sqlStr = ""
                            sqlStr = "SELECT SUM(IW_goods_total) AS IW_goods_total ,SUM(OW_goods_total) AS OW_goods_total,SUM(TotalGoods) AS TotalGoods FROM ( "
                            sqlStr = sqlStr & "select Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name  "


                            Dim dbConn6 As DBUtility = New DBUtility()
                            If Not String.IsNullOrEmpty(ShipNameNew) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", ShipNameNew))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name  UNION "

                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            End If

                            sqlStr = sqlStr & " SELECT "
                            sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name1  "

                            If Not String.IsNullOrEmpty(branchname) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name1 ", branchname))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom1 and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo1 GROUP BY Branch_name )A "

                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom1", queryParams.DateFrom))
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo1", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom1", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo1", queryParams.DateTo))
                            End If

                            Dim _DataTable2 As DataTable = dbConn6.GetDataSet(sqlStr)
                            dbConn6.sqlCmd.Parameters.Clear()
                            dbConn6.CloseConnection()

                            Dim column As DataColumn = New DataColumn("Branch_name", GetType(String))
                            _DataTable2.Columns.Add(column)
                            column.SetOrdinal(0)
                            _DataTable2.Rows(0)(0) = branchname
                            _DataTable.Merge(_DataTable2)
                        Else

                        End If




                    ElseIf queryParams.DateTo >= GetPreviousDate And queryParams.DateFrom <= GetPreviousDate Then
                        If GetPreviousDate = queryParams.DateTo Then
                            'not combined
                            sqlStr = "SELECT "
                            sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name  "

                            Dim dbConn4 As DBUtility = New DBUtility()
                            If Not String.IsNullOrEmpty(queryParams.BranchName) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", branchname))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            End If

                            Dim _dt2 As DataTable = New DataTable()
                            _dt2 = dbConn4.GetDataSet(sqlStr)
                            dbConn4.CloseConnection()
                            _DataTable.Merge(_dt2)

                            sqlStr = ""
                        Else
                            'combined
                            sqlStr = ""
                            sqlStr = "SELECT SUM(IW_goods_total) AS IW_goods_total ,SUM(OW_goods_total) AS OW_goods_total,SUM(TotalGoods) AS TotalGoods FROM ( "
                            sqlStr = sqlStr & "select Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name  "


                            Dim dbConn6 As DBUtility = New DBUtility()
                            If Not String.IsNullOrEmpty(ShipNameNew) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", ShipNameNew))
                            End If
                            If (Not (String.IsNullOrEmpty(EffectiveDate)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name  UNION "

                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", EffectiveDate))
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(EffectiveDate) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", EffectiveDate))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                            End If

                            sqlStr = sqlStr & " SELECT "
                            sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                            sqlStr = sqlStr & "as IW_goods_total, "
                            sqlStr = sqlStr & "SUM (ow_goods_total) "
                            sqlStr = sqlStr & "as OW_goods_total, "
                            sqlStr = sqlStr & "SUM (iw_goods_total) "
                            sqlStr = sqlStr & "+ "
                            sqlStr = sqlStr & "SUM (ow_goods_total)"
                            sqlStr = sqlStr & "as TotalGoods "
                            sqlStr = sqlStr & "FROM "
                            sqlStr = sqlStr & "SC_DSR_info "
                            sqlStr = sqlStr & "WHERE "
                            sqlStr = sqlStr & "Branch_name = @Branch_name1  "

                            If Not String.IsNullOrEmpty(branchname) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name1 ", branchname))
                            End If
                            If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                                sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom1 and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo1 GROUP BY Branch_name )A "

                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom1", queryParams.DateFrom))
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo1", queryParams.DateTo))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom1", queryParams.DateFrom))
                            ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                                dbConn6.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo1", queryParams.DateTo))
                            End If

                            Dim _DataTable2 As DataTable = dbConn6.GetDataSet(sqlStr)
                            dbConn6.sqlCmd.Parameters.Clear()
                            dbConn6.CloseConnection()

                            Dim column As DataColumn = New DataColumn("Branch_name", GetType(String))
                            _DataTable2.Columns.Add(column)
                            column.SetOrdinal(0)
                            _DataTable2.Rows(0)(0) = branchname
                            _DataTable.Merge(_DataTable2)

                        End If
                    Else
                        'no need to combine
                        sqlStr = "SELECT "
                        sqlStr = sqlStr & " Branch_name, SUM(IW_goods_total) "
                        sqlStr = sqlStr & "as IW_goods_total, "
                        sqlStr = sqlStr & "SUM (ow_goods_total) "
                        sqlStr = sqlStr & "as OW_goods_total, "
                        sqlStr = sqlStr & "SUM (iw_goods_total) "
                        sqlStr = sqlStr & "+ "
                        sqlStr = sqlStr & "SUM (ow_goods_total)"
                        sqlStr = sqlStr & "as TotalGoods "
                        sqlStr = sqlStr & "FROM "
                        sqlStr = sqlStr & "SC_DSR_info "
                        sqlStr = sqlStr & "WHERE "
                        sqlStr = sqlStr & "Branch_name = @Branch_name  "

                        Dim dbConn4 As DBUtility = New DBUtility()
                        If Not String.IsNullOrEmpty(queryParams.BranchName) Then
                            dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@Branch_name ", branchname))
                        End If
                        If (Not (String.IsNullOrEmpty(queryParams.DateFrom)) And (Not (String.IsNullOrEmpty(queryParams.DateTo)))) Then
                            sqlStr = sqlStr & "AND LEFT (CONVERT(VARCHAR, Billing_date, 111), 10)>= @DateFrom and LEFT(CONVERT(VARCHAR, Billing_date, 111), 10) <= @DateTo GROUP BY Branch_name ;"
                            dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                            dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                        ElseIf Not String.IsNullOrEmpty(queryParams.DateFrom) Then
                            dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateFrom", queryParams.DateFrom))
                        ElseIf Not String.IsNullOrEmpty(queryParams.DateTo) Then
                            dbConn4.sqlCmd.Parameters.Add(CommonControl.GetNullableParameter("@DateTo", queryParams.DateTo))
                        End If

                        Dim _dt2 As DataTable = New DataTable()
                        _dt2 = dbConn4.GetDataSet(sqlStr)
                        dbConn4.CloseConnection()
                        _DataTable.Merge(_dt2)

                        sqlStr = ""
                    End If
                End If

            End If

        Next

        Return _DataTable
    End Function


End Class
