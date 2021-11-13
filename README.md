# sap-purchase-order-sql 

sap-purchase-order-sql は、主にエッジアプリケーションにおいて、SAPと連携された購買発注データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-purchase-order-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-purchase-order-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_PURCHASEORDER_PROCESS_SRV_0001/overview     
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-purchase-order-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-purchase-order-sql-header-data-with-address.sql（SAP 購買発注 - ヘッダデータ と 住所情報）  
* sap-purchase-order-sql-item-data-with-address.sql（SAP 購買発注 - 明細データ と 住所情報）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。




