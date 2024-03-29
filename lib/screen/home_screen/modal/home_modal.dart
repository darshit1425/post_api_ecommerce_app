class EcommerceModal {
  String? id, p_name, p_price, p_offer, p_category, p_image, p_desc, p_rate;

  EcommerceModal({
    this.id,
    this.p_name,
    this.p_price,
    this.p_offer,
    this.p_category,
    this.p_image,
    this.p_desc,
    this.p_rate,
  });

  EcommerceModal EcommerceModalFromJson(Map m1) {
    id = m1['id'];
    p_name = m1['product_name'];
    p_price = m1['product_price'];
    p_offer = m1['product_offer'];
    p_category = m1['product_category'];
    p_image = m1['product_image'];
    p_desc = m1['product_desc'];
    p_rate = m1['product_rate'];

    EcommerceModal E1 = EcommerceModal(
      id: id,
      p_category: p_category,
      p_desc: p_desc,
      p_image: p_image,
      p_name: p_name,
      p_offer: p_offer,
      p_price: p_price,
      p_rate: p_rate,
    );

    return E1;
  }
}
