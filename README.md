# ExchequerClient

Ruby gem for [Exchequer-server](https://github.com/dailydrip/exchequer-server).


## How to use

You need to set up your API URL.

```sh
export BASE_API_URL="http://localhost:3000"
export EXCHEQUER_API_KEY="API KEY"
export EXCHEQUER_MANAGER_PUBLIC_TOKEN="MANAGER PUBLIC TOKEN"
```

### Iframes

- Offer show

```ruby
<%= ExchequerClient::Iframe::Offers.show(offer.id, @manager_public_token).html_safe %>
```

Render the URL:

```html
<%= link_to "Buy", ExchequerClient::URL.offers_show(offer.id,
@manager_public_token) %>
```

### API

## Offers

- Get all the Offers for a given manager.

To get all the offer for a givem manager,
we need to specify the manager by passing its
public token.

```ruby
@offers = ExchequerClient::OfferClient.new(
api_key: @api_key,
public_token: @manager_public_token).all
```
