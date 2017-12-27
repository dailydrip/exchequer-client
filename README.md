# ExchequerClient

Ruby gem for [Exchequer-server](https://github.com/dailydrip/exchequer-server).


## How to use

You need to set up your API URL.

```sh
export BASE_API_URL="http://localhost:3000"
export EXCHEQUER_TOKEN="API TOKEN"
```

### Iframes

- Offer show

```ruby
<%= ExchequerClient::Iframe::Offers.show(offer.id).html_safe %>
```

Render the URL:

```html
<%= link_to "Buy", ExchequerClient::URL.offers_show(offer.id) %>
```

### API

## Offers

- Get all the Offers for a given manager

```ruby
@offers = ExchequerClient::OfferClient.new(
    api_key: @api_token,
    public_token: public_token).all
```
