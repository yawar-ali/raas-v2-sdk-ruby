# Getting started

With this RESTful API you can integrate a global reward or incentive program into your app or platform. If you have any questions or if you'd like to receive your own credentials, please contact us at devsupport@tangocard.com.

## How to Use
You can add this SDK to your project via RubyGems, it's called ```tangocard-raas```. Then you can include it where needed by calling ```require 'raas'```

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build tangocard-raas.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install tangocard-raas-1.1.2.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Raas-Ruby&workspaceName=Raas-Ruby&projectName=raas&gemName=raas&gemVer=1.1.2)

## How to Use

The following section explains how to use the Raas Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the Raas gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'tangocard-raas', '~> 1.1.2' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Raas-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| platform_name | RaaS v2 API Platform Name |
| platform_key | RaaS v2 API Platform Key |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
platform_name = 'QAPlatform2' # RaaS v2 API Platform Name
platform_key = 'apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj' # RaaS v2 API Platform Key

client = Raas::RaasClient.new(
  platform_name: platform_name,
  platform_key: platform_key
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Tango%20Card%20RaaS%20v2%20API-Ruby&workspaceName=Raas&projectName=raas&gemName=raas&gemVer=1.1.2&initLine=client%2520%253D%2520RaasClient.new%2528%2527platform_name%2527%252C%2520%2527platform_key%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [AccountsController](#accounts_controller)
* [OrdersController](#orders_controller)
* [CatalogController](#catalog_controller)
* [ExchangeRatesController](#exchange_rates_controller)
* [StatusController](#status_controller)
* [CustomersController](#customers_controller)

## <a name="accounts_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountsController") AccountsController

### Get singleton instance

The singleton instance of the ``` AccountsController ``` class can be accessed from the API Client.

```ruby
accounts = client.accounts
```

### <a name="get_accounts_by_customer"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.get_accounts_by_customer") get_accounts_by_customer

> Gets a list of accounts for a given customer


```ruby
def get_accounts_by_customer(customer_identifier); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_identifier |  ``` Required ```  | Customer Identifier |


#### Example Usage

```ruby
customer_identifier = 'customerIdentifier'

result = accounts.get_accounts_by_customer(customer_identifier)

```


### <a name="get_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.get_account") get_account

> Get an account


```ruby
def get_account(account_identifier); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_identifier |  ``` Required ```  | Account Identifier |


#### Example Usage

```ruby
account_identifier = 'accountIdentifier'

result = accounts.get_account(account_identifier)

```


### <a name="create_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.create_account") create_account

> Create an account under a given customer


```ruby
def create_account(customer_identifier,
                       body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_identifier |  ``` Required ```  | Customer Identifier |
| body |  ``` Required ```  | Request Body |


#### Example Usage

```ruby
customer_identifier = 'customerIdentifier'
body = CreateAccountRequestModel.new

result = accounts.create_account(customer_identifier, body)

```


### <a name="get_all_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.get_all_accounts") get_all_accounts

> Gets all accounts under the platform


```ruby
def get_all_accounts; end
```

#### Example Usage

```ruby

result = accounts.get_all_accounts()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="orders_controller"></a>![Class: ](https://apidocs.io/img/class.png ".OrdersController") OrdersController

### Get singleton instance

The singleton instance of the ``` OrdersController ``` class can be accessed from the API Client.

```ruby
orders = client.orders
```

### <a name="create_order"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.create_order") create_order

> TODO: Add a method description


```ruby
def create_order(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = CreateOrderRequestModel.new

result = orders.create_order(body)

```


### <a name="get_order"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.get_order") get_order

> TODO: Add a method description


```ruby
def get_order(reference_order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| reference_order_id |  ``` Required ```  | Reference Order ID |


#### Example Usage

```ruby
reference_order_id = 'referenceOrderID'

result = orders.get_order(reference_order_id)

```


### <a name="create_resend_order"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.create_resend_order") create_resend_order

> TODO: Add a method description


```ruby
def create_resend_order(reference_order_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| reference_order_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
reference_order_id = 'referenceOrderID'

result = orders.create_resend_order(reference_order_id)

```


### <a name="get_orders"></a>![Method: ](https://apidocs.io/img/method.png ".OrdersController.get_orders") get_orders

> TODO: Add a method description


```ruby
def get_orders(options = Hash.new); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_identifier |  ``` Optional ```  | TODO: Add a parameter description |
| customer_identifier |  ``` Optional ```  | TODO: Add a parameter description |
| external_ref_id |  ``` Optional ```  | TODO: Add a parameter description |
| start_date |  ``` Optional ```  | TODO: Add a parameter description |
| end_date |  ``` Optional ```  | TODO: Add a parameter description |
| elements_per_block |  ``` Optional ```  | TODO: Add a parameter description |
| page |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
collect = Hash.new

account_identifier = 'accountIdentifier'
collect['account_identifier'] = account_identifier

customer_identifier = 'customerIdentifier'
collect['customer_identifier'] = customer_identifier

external_ref_id = 'externalRefID'
collect['external_ref_id'] = external_ref_id

start_date = DateTime.now
collect['start_date'] = start_date

end_date = DateTime.now
collect['end_date'] = end_date

elements_per_block = 201
collect['elements_per_block'] = elements_per_block

page = 201
collect['page'] = page


result = orders.get_orders(collect)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="catalog_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CatalogController") CatalogController

### Get singleton instance

The singleton instance of the ``` CatalogController ``` class can be accessed from the API Client.

```ruby
catalog = client.catalog
```

### <a name="get_catalog"></a>![Method: ](https://apidocs.io/img/method.png ".CatalogController.get_catalog") get_catalog

> Get Catalog


```ruby
def get_catalog; end
```

#### Example Usage

```ruby

result = catalog.get_catalog()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="exchange_rates_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ExchangeRatesController") ExchangeRatesController

### Get singleton instance

The singleton instance of the ``` ExchangeRatesController ``` class can be accessed from the API Client.

```ruby
exchangeRates = client.exchange_rates
```

### <a name="get_exchange_rates"></a>![Method: ](https://apidocs.io/img/method.png ".ExchangeRatesController.get_exchange_rates") get_exchange_rates

> Retrieve current exchange rates


```ruby
def get_exchange_rates; end
```

#### Example Usage

```ruby

exchangeRates.get_exchange_rates()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="status_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StatusController") StatusController

### Get singleton instance

The singleton instance of the ``` StatusController ``` class can be accessed from the API Client.

```ruby
status = client.status
```

### <a name="get_system_status"></a>![Method: ](https://apidocs.io/img/method.png ".StatusController.get_system_status") get_system_status

> *Tags:*  ``` Skips Authentication ``` 

> Retrieve system status


```ruby
def get_system_status; end
```

#### Example Usage

```ruby

result = status.get_system_status()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="customers_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CustomersController") CustomersController

### Get singleton instance

The singleton instance of the ``` CustomersController ``` class can be accessed from the API Client.

```ruby
customers = client.customers
```

### <a name="get_customer"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_customer") get_customer

> Get a customer


```ruby
def get_customer(customer_identifier); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| customer_identifier |  ``` Required ```  | Customer Identifier |


#### Example Usage

```ruby
customer_identifier = 'customerIdentifier'

result = customers.get_customer(customer_identifier)

```


### <a name="create_customer"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.create_customer") create_customer

> Create a new customer


```ruby
def create_customer(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | Request Body |


#### Example Usage

```ruby
body = CreateCustomerRequestModel.new

result = customers.create_customer(body)

```


### <a name="get_all_customers"></a>![Method: ](https://apidocs.io/img/method.png ".CustomersController.get_all_customers") get_all_customers

> Gets all customers under the platform


```ruby
def get_all_customers; end
```

#### Example Usage

```ruby

result = customers.get_all_customers()

```


[Back to List of Controllers](#list_of_controllers)



