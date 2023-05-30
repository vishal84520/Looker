view: orders {
  sql_table_name: "PUBLIC"."ORDERS"
    ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."Order ID" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."Customer ID" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."Customer Name" ;;
  }

  dimension: discount {
    type: string
    sql: ${TABLE}."DISCOUNT" ;;
  }

  dimension: market {
    type: string
    sql: ${TABLE}."MARKET" ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Order Date" ;;
  }

  dimension: order_priority {
    type: string
    sql: ${TABLE}."Order Priority" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."Postal Code" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."Product ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."Product Name" ;;
  }

  dimension: profit {
    type: string
    sql: ${TABLE}."PROFIT" ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}."Row ID" ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}."SALES" ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}."SEGMENT" ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Ship Date" ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}."Ship Mode" ;;
  }

  dimension: shipping_cost {
    type: string
    sql: ${TABLE}."Shipping Cost" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}."Sub-Category" ;;
  }

  measure: count {
    type: count
    drill_fields: [order_id, product_name, customer_name, returns.count]
  }
}
