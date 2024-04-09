view: Hans_SalesInsightsLOreal {
    label: "Hans SalesInsightsLOreal"
    sql_table_name: "Hans SalesInsightsLOreal"."Hans SalesInsightsLOreal";;
    dimension: Date_Hierarchy_Dim_Date_Level {
        label: "Dim Date Level"
        type: string
        sql: ${TABLE}."Dim Date Level";;
    }


    measure: m_orderquantity_sum {
        label: "Order Quantity"
        type: sum
        sql: ${TABLE}."m_orderquantity_sum";;
    }

}
