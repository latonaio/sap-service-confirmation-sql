# sap-service-confirmation-sql

sap-service-confirmation-sql は、主にエッジアプリケーションにおいて、SAPと連携された サービス確認データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-service-confirmation-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-service-confirmation-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_SERVICE_CONFIRMATION_SRV_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-service-confirmation-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-service-confirmation-sql-header-data.sql（SAP サービス確認 - ヘッダデータ）  
* sap-service-confirmation-sql-person-responsible-data.sql（SAP サービス確認 - 作業責任者データ）  
* sap-service-confirmation-sql-reference-object-data.sql（SAP サービス確認 - 参照対象データ）  
* sap-service-confirmation-sql-item-data.sql（SAP サービス確認 - 明細データ）  
* sap-service-confirmation-sql-item-pricing-element-data.sql（SAP サービス確認 - 明細価格条件データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  