.class Lcmb/pb/ui/cmbwidget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/cmbwidget/CmbEditText;


# direct methods
.method private constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/cmbwidget/a;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p2, p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/view/View;)V

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p2, p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->b(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->c()V

    :cond_0
    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->d()V

    iget-object p2, p0, Lcmb/pb/ui/cmbwidget/a;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Z)V

    return-void
.end method
