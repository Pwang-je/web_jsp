package Bean_pack;

public class ProductProcess {
    private ProductBean proBean;

    public void setProductBean(ProductBean productBean) {
        this.proBean = productBean;
    }

    public double getDiscount() {
        return proBean.getPrice() - proBean.getDisc();
    }
}
