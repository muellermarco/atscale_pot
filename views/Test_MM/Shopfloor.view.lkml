view: Shopfloor {
    label: "Shopfloor"
    sql_table_name: "Test MM"."Shopfloor";;
    dimension: Customer {
        label: " Customer"
        group_label: "Customer"
        type: string
        sql: ${TABLE}."Customer";;
    }

    dimension: Customer_Gender {
        label: "  Gender"
        group_label: "Customer"
        type: string
        sql: ${TABLE}."Gender";;
        drill_fields: [Customer]
    }

    dimension: Dim_Date_Hierarchy_Date {
        label: " Date"
        group_label: "Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Date";;
    }

    dimension: Dim_Date_Hierarchy_Year {
        label: "  Year"
        group_label: "Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Year";;
        drill_fields: [Dim_Date_Hierarchy_Date]
    }


    measure: m_orderquantity_sum {
        label: "Order Quantity"
        type: sum
        sql: ${TABLE}."m_orderquantity_sum";;
    }

}
