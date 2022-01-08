.class public final Lcom/unionpay/mobile/android/nocard/views/bi;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/b$a;
.implements Lcom/unionpay/mobile/android/upviews/b$b;


# static fields
.field private static w:Ljava/lang/String; = "download://"


# instance fields
.field private r:Lcom/unionpay/mobile/android/upviews/b;

.field private s:Landroid/view/ViewGroup;

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->t:I

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->u:Z

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->v:Z

    const/16 p1, 0xe

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->f:I

    sget p1, Lcom/unionpay/mobile/android/global/a;->t:I

    sget v0, Lcom/unionpay/mobile/android/global/a;->k:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/global/a;->b(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Lcom/unionpay/mobile/android/global/a;->s:I

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->t:I

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->u:Z

    iput-boolean p3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->v:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bi;->a()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bi;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bi;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected final b()V
    .locals 10

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    iget-boolean v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->u:Z

    if-eqz v3, :cond_0

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v3, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x406

    invoke-virtual {v3, v4, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v8

    move-object v4, v2

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ay$a;)V

    :cond_0
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/nocard/views/bi;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/nocard/views/bi;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 6

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    new-instance v0, Lcom/unionpay/mobile/android/upviews/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/unionpay/mobile/android/upviews/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upviews/b$a;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bj;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/bj;-><init>(Lcom/unionpay/mobile/android/nocard/views/bi;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    sget-object v1, Lcom/unionpay/mobile/android/nocard/views/bi;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/b;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->t:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->t:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->m:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/unionpay/mobile/android/global/a;->t:I

    sget v5, Lcom/unionpay/mobile/android/global/a;->k:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->m:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/b;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->bi:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mobile/android/nocard/views/bi;->a(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bi;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->u:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/bk;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/bk;-><init>(Lcom/unionpay/mobile/android/nocard/views/bi;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bl;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/bl;-><init>(Lcom/unionpay/mobile/android/nocard/views/bi;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->av:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->k()V

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->r:Lcom/unionpay/mobile/android/upviews/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bi;->s:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
