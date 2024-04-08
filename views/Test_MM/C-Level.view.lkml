view: C_Level {
    label: "C-Level"
    sql_table_name: "Test MM"."C-Level";;
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

    dimension: Geography_Hierarchy_City {
        label: "  City"
        group_label: "Geography Hierarchy"
        type: string
        sql: ${TABLE}."City";;
    }

    dimension: Geography_Hierarchy_Country {
        label: "    Country"
        group_label: "Geography Hierarchy"
        type: string
        sql: ${TABLE}."Country";;
        drill_fields: [Geography_Hierarchy_State]
    }

    dimension: Geography_Hierarchy_State {
        label: "   State"
        group_label: "Geography Hierarchy"
        type: string
        sql: ${TABLE}."State";;
        drill_fields: [Geography_Hierarchy_City]
    }


    measure: m_orderquantity_sum {
        label: "Order Quantity"
        type: sum
        sql: ${TABLE}."m_orderquantity_sum";;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount"
        type: sum
        sql: ${TABLE}."m_salesamount_sum";;
    }

}
