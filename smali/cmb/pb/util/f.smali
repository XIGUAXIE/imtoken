.class Lcmb/pb/util/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcmb/pb/util/CMBKeyboardFunc;


# direct methods
.method public constructor <init>(Lcmb/pb/util/CMBKeyboardFunc;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    const-string v4, "YES"

    const-string v5, "NO"

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->p(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, " "

    invoke-static {v0, v2, v1, v4}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->m(Lcmb/pb/util/CMBKeyboardFunc;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcmb/pb/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v2, v4}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v2}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2, v4}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->o(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v0}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Lcmb/pb/ui/g;)V

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->h(Lcmb/pb/util/CMBKeyboardFunc;)Lcmb/pb/ui/g;

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/g;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "rawX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string/jumbo v1, "rawY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->g(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;

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

    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->g(Lcmb/pb/util/CMBKeyboardFunc;)Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Lcmb/pb/util/CMBKeyboardFunc;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg_destroy"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KeyString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->k(Lcmb/pb/util/CMBKeyboardFunc;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1, v1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0, v4}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0, p1}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->m(Lcmb/pb/util/CMBKeyboardFunc;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcmb/pb/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_6

    :cond_8
    :goto_4
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KeyCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->k(Lcmb/pb/util/CMBKeyboardFunc;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0, v4}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcmb/pb/util/CMBKeyboardFunc;->b(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;)V

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->m(Lcmb/pb/util/CMBKeyboardFunc;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->n(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcmb/pb/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcmb/pb/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1, v5}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_d
    iget-object p1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {p1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v1}, Lcmb/pb/util/CMBKeyboardFunc;->l(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1, v5}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    iget-object v0, p0, Lcmb/pb/util/f;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-static {v0}, Lcmb/pb/util/CMBKeyboardFunc;->o(Lcmb/pb/util/CMBKeyboardFunc;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, p1}, Lcmb/pb/util/CMBKeyboardFunc;->a(Lcmb/pb/util/CMBKeyboardFunc;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void
.end method
