view: worksop_francois {
    label: "worksop francois"
    sql_table_name: "worksop francois"."worksop francois";;
    dimension: Date_YWD_Date_YWD_Level {
        label: " Date YWD Level"
        group_label: "Date YWD"
        type: string
        sql: ${TABLE}."Date YWD Level";;
    }

    dimension: Date_YWD_Iso_8601_Year {
        label: "  Iso 8601 Year"
        group_label: "Date YWD"
        type: string
        sql: ${TABLE}."Iso 8601 Year";;
        drill_fields: [Date_YWD_Date_YWD_Level]
    }

    dimension: Date_YWD_Week {
        label: "   Week"
        group_label: "Date YWD"
        type: string
        sql: ${TABLE}."Week";;
        drill_fields: [Date_YWD_Iso_8601_Year]
    }

    dimension: Dim_Date_Hierarchy_Dim_Date_Level {
        label: " Date"
        group_label: "Dim Date YQMD"
        type: string
        sql: ${TABLE}."Dim Date Level";;
    }

    dimension: Dim_Date_Hierarchy_Month1 {
        label: "    Month"
        group_label: "Dim Date YQMD"
        type: string
        sql: ${TABLE}."Month1";;
        drill_fields: [Dim_Date_Hierarchy_Quarter]
    }

    dimension: Dim_Date_Hierarchy_Quarter {
        label: "   Quarter"
        group_label: "Dim Date YQMD"
        type: date_quarter
        sql: ${TABLE}."Quarter";;
        drill_fields: [Dim_Date_Hierarchy_Year1]
    }

    dimension: Dim_Date_Hierarchy_Year1 {
        label: "  Year"
        group_label: "Dim Date YQMD"
        type: string
        sql: ${TABLE}."Year1";;
        drill_fields: [Dim_Date_Hierarchy_Dim_Date_Level]
    }


    measure: m_customerkey_distinct_est {
        label: "Customer count"
        group_label: "Sales Metrics"
        type: count_distinct
        sql: ${TABLE}."m_customerkey_distinct_est";;
    }

    measure: m_orderquantity_sum {
        label: "Order Quantity"
        group_label: "Sales Metrics"
        description: "Sum of qty"
        value_format: "#.####"
        type: sum
        sql: ${TABLE}."m_orderquantity_sum";;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount"
        group_label: "Sales Metrics"
        description: "this is the sales amount"
        type: sum
        sql: ${TABLE}."m_salesamount_sum";;
    }

    measure: m_Sales_Tax_sum {
        label: "Sales Tax"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}."m_Sales Tax_sum";;
    }

}
