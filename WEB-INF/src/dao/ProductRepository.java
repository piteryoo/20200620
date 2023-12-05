package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
	        return instance;
   }



	public ProductRepository() {
		Product phone = new Product("P1234", "쇼트 레이어 옴므", 67000);
		phone.setDescription("가볍지만 차분하게 떨어지는 레이어드 스타일로 세련되고 샤프한 느낌의 제품");
		phone.setCategory("가발");
		phone.setManufacturer("가발나라");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("P1234.jpg");
        		Product notebook = new Product("P1235", "에즈펌 수제 통가발", 150000);
		notebook.setDescription("누구나 어울리는 스타일로 층이 많지 않고 자연스럽 흐르는 듯한 C컬 펌으로 볼륨을 살리기 좋은 디자인");
		notebook.setCategory("가발");
		notebook.setManufacturer("가발나라");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        notebook.setFilename("P1235.jpg");

		Product tablet = new Product("P1236", "미디엄 쉐도우 펌", 90000);
		tablet.setDescription("깔끔한 댄디컷 스타일에 쉐도우 펌을 시술한 펌 스타일");
		tablet.setCategory("가발");
		tablet.setManufacturer("가발나라");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        tablet.setFilename("P1236.jpg");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
       public void addProduct(Product product) {
    listOfProducts.add(product);
 }
}

