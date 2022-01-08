.class Lcmb/pb/ui/cmbwidget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcmb/pb/ui/cmbwidget/CmbEditText;


# direct methods
.method private constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/cmbwidget/c;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v3}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v4}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v4}, Lcmb/pb/ui/cmbwidget/CmbEditText;->c(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v2, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v3}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->b()V

    :cond_1
    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->b(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/c;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->c()V

    :cond_2
    return v0
.end method
