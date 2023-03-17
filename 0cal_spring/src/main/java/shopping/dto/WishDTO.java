package shopping.dto;

public class WishDTO {
    private int wish_key;
    private String wish_reg_date;
    private String wish_del_date;
    private int pr_key;
    private String id;
    
    public WishDTO() {
        
    }
    
    public WishDTO(int wish_key, String wish_reg_date, String wish_del_date, int pr_key, String id) {
        super();
        this.wish_key = wish_key;
        this.wish_reg_date = wish_reg_date;
        this.wish_del_date = wish_del_date;
        this.pr_key = pr_key;
        this.id = id;
    }

	public int getWish_key() {
		return wish_key;
	}

	public void setWish_key(int wish_key) {
		this.wish_key = wish_key;
	}

	public String getWish_reg_date() {
		return wish_reg_date;
	}

	public void setWish_reg_date(String wish_reg_date) {
		this.wish_reg_date = wish_reg_date;
	}

	public String getWish_del_date() {
		return wish_del_date;
	}

	public void setWish_del_date(String wish_del_date) {
		this.wish_del_date = wish_del_date;
	}

	public int getPr_key() {
		return pr_key;
	}

	public void setPr_key(int pr_key) {
		this.pr_key = pr_key;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
    
}