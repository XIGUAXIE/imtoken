.class Lcmb/pb/ui/cmbwidget/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcmb/pb/ui/cmbwidget/CmbEditText;


# direct methods
.method public constructor <init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v0, v2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->b(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "rawX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string/jumbo v1, "rawY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v6, v0

    move v7, p1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->requestFocus()Z

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KeyString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v0, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->requestFocus()Z

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KeyCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {v1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getSelectionStart()I

    move-result v1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->c()Lcmb/pb/ui/PBKeyboardActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcmb/pb/ui/PBKeyboardActivity;->b()V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-virtual {p1, v1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/b;->a:Lcmb/pb/ui/cmbwidget/CmbEditText;

    invoke-static {p1, v2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V

    :cond_4
    :goto_0
    return-void
.end method
