package Bean_pack;

public class ExamProcess {
    private FormBean formBean;      // FormBean.java 의 FormBean 파일임.

    public void setFormBean(FormBean formBean) {
        this.formBean = formBean;
    }

    public int getTot() {
        return formBean.getKor() + formBean.getEng();
    }
    public double getAvg() {
        return getTot() / 2.0;
    }

}
