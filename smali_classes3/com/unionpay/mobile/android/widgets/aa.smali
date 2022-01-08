.class public abstract Lcom/unionpay/mobile/android/widgets/aa;
.super Lcom/unionpay/mobile/android/widgets/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/aa$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/unionpay/mobile/android/widgets/u;

.field private c:Lcom/unionpay/mobile/android/widgets/aa$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->c:Lcom/unionpay/mobile/android/widgets/aa$a;

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/aa;->a:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    new-instance p1, Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aa;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->a()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->d()V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aa;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->c(Ljava/lang/String;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/a;->n:I

    const/4 p4, -0x1

    invoke-direct {p1, p4, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aa;->m:Landroid/widget/RelativeLayout;

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p2, p5, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    const-string p2, "placeholder"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->setFocusable(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Lcom/unionpay/mobile/android/widgets/ab;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/widgets/ab;-><init>(Lcom/unionpay/mobile/android/widgets/aa;)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Lcom/unionpay/mobile/android/widgets/ac;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/widgets/ac;-><init>(Lcom/unionpay/mobile/android/widgets/aa;)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p1

    const/16 p2, 0x7d0

    sget p3, Lcom/unionpay/mobile/android/global/a;->v:I

    invoke-virtual {p1, p2, p4, p3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/widgets/u;

    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/af;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->i:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aQ:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aa;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aa;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/ap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aR:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_3
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/ah;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aT:Ljava/lang/String;

    goto :goto_0

    :cond_4
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aS:Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/au;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aU:Ljava/lang/String;

    goto :goto_0

    :cond_6
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/ao;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aV:Ljava/lang/String;

    goto :goto_0

    :cond_7
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/e;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aW:Ljava/lang/String;

    goto :goto_0

    :cond_8
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/ae;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aX:Ljava/lang/String;

    goto :goto_0

    :cond_9
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/bd;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aY:Ljava/lang/String;

    goto :goto_0

    :cond_a
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/at;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->aZ:Ljava/lang/String;

    goto :goto_0

    :cond_b
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/av;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->ba:Ljava/lang/String;

    goto :goto_0

    :cond_c
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/f;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->bb:Ljava/lang/String;

    goto :goto_0

    :cond_d
    :goto_1
    instance-of p1, p0, Lcom/unionpay/mobile/android/widgets/k;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p2

    const/16 p3, 0x3f3

    :goto_2
    invoke-virtual {p2, p3, p4, p4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p2

    const/16 p3, 0x3f5

    goto :goto_2
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aa;)Lcom/unionpay/mobile/android/widgets/aa$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/aa;->c:Lcom/unionpay/mobile/android/widgets/aa$a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/aa$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->c:Lcom/unionpay/mobile/android/widgets/aa$a;

    return-void
.end method

.method protected final a(Landroid/view/View;)Z
    .locals 11

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v getGlobalVisibleRect():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x2

    new-array v4, v2, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " locationW = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget v7, v4, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v4, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, " locationS = ["

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v10, v2, v6

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v8

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0xa

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aa;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " getLocalVisibleRect = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " getGlobalVisibleRect = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/u;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aa;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/aa;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->e()V

    :cond_0
    return-void
.end method
