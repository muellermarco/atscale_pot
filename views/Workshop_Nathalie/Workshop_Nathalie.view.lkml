view: Workshop_Nathalie {
    label: "Workshop Nathalie"
    sql_table_name: "Workshop Nathalie"."Workshop Nathalie";;
    dimension: Date_YWD_Order_Date_YWD_Level {
        label: " Order Date"
        group_label: "Order Date YWD"
        type: string
        sql: ${TABLE}."Order Date YWD Level";;
    }

    dimension: Date_YWD_Order_Week {
        label: "  Order Week"
        group_label: "Order Date YWD"
        type: string
        sql: ${TABLE}."Order Week";;
        drill_fields: [Date_YWD_Order_Date_YWD_Level]
    }

    dimension: Date_YWD_Order_Year1a {
        label: "   Order Year"
        group_label: "Order Date YWD"
        type: string
        sql: ${TABLE}."Order Year1a";;
        drill_fields: [Date_YWD_Order_Week]
    }

    dimension: Dim_Date_Hierarchy_Order_Dim_Date_Level {
        label: " Order Date"
        group_label: "Order Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Order Dim Date Level";;
    }

    dimension: Dim_Date_Hierarchy_Order_Month1 {
        label: "  Order Month"
        group_label: "Order Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Order Month1";;
        drill_fields: [Dim_Date_Hierarchy_Order_Dim_Date_Level]
    }

    dimension: Dim_Date_Hierarchy_Order_Quarter {
        label: "   Order Quarter"
        group_label: "Order Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Order Quarter";;
        drill_fields: [Dim_Date_Hierarchy_Order_Month1]
    }

    dimension: Dim_Date_Hierarchy_Order_Year1 {
        label: "    Order Year"
        group_label: "Order Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Order Year1";;
        drill_fields: [Dim_Date_Hierarchy_Order_Quarter]
    }

    dimension: Date_YWD_Ship_Date_YWD_Level {
        label: " Ship Date"
        group_label: "Ship Date YWD"
        type: string
        sql: ${TABLE}."Ship Date YWD Level";;
    }

    dimension: Date_YWD_Ship_Week {
        label: "  Ship Week"
        group_label: "Ship Date YWD"
        type: string
        sql: ${TABLE}."Ship Week";;
        drill_fields: [Date_YWD_Ship_Date_YWD_Level]
    }

    dimension: Date_YWD_Ship_Year1a {
        label: "   Ship Year"
        group_label: "Ship Date YWD"
        type: string
        sql: ${TABLE}."Ship Year1a";;
        drill_fields: [Date_YWD_Ship_Week]
    }

    dimension: Dim_Date_Hierarchy_Ship_Dim_Date_Level {
        label: " Ship Date"
        group_label: "Ship Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Ship Dim Date Level";;
    }

    dimension: Dim_Date_Hierarchy_Ship_Month1 {
        label: "  Ship Month"
        group_label: "Ship Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Ship Month1";;
        drill_fields: [Dim_Date_Hierarchy_Ship_Dim_Date_Level]
    }

    dimension: Dim_Date_Hierarchy_Ship_Quarter {
        label: "   Ship Quarter"
        group_label: "Ship Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Ship Quarter";;
        drill_fields: [Dim_Date_Hierarchy_Ship_Month1]
    }

    dimension: Dim_Date_Hierarchy_Ship_Year1 {
        label: "    Ship Year"
        group_label: "Ship Dim Date Hierarchy"
        type: string
        sql: ${TABLE}."Ship Year1";;
        drill_fields: [Dim_Date_Hierarchy_Ship_Quarter]
    }


    measure: m_customerkey_distinct_est {
        label: "Customer Count Estimate"
        group_label: "Sales Metrics"
        type: count_distinct
        sql: ${TABLE}."m_customerkey_distinct_est";;
    }

    measure: m_orderquantity_sum {
        label: "Order Quantity"
        group_label: "Sales Metrics"
        type: sum
        sql: ${TABLE}."m_orderquantity_sum";;
    }

    measure: m_salesamount_sum {
        label: "Sales Amount"
        group_label: "Sales Metrics"
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
