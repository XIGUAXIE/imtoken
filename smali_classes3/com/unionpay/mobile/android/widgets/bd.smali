.class public Lcom/unionpay/mobile/android/widgets/bd;
.super Lcom/unionpay/mobile/android/widgets/aa;

# interfaces
.implements Lcom/unionpay/mobile/android/widgets/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/bd$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unionpay/mobile/android/widgets/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/widgets/bd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->s:Ljava/lang/String;

    const-string p2, "point"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->r:Ljava/lang/String;

    const-string p2, "max_use_point"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->q:Ljava/lang/String;

    const-string p2, "min_use_point"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->p:Ljava/lang/String;

    const-string p2, "ratio"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->s:Ljava/lang/String;

    const-string p2, "ordr_amnt"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->o:Ljava/lang/String;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->b:Lcom/unionpay/mobile/android/widgets/u;

    const/16 p3, 0x2002

    invoke-virtual {p2, p3}, Lcom/unionpay/mobile/android/widgets/u;->a(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd;->b:Lcom/unionpay/mobile/android/widgets/u;

    const-string p3, "0123456789."

    invoke-static {p3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    const/4 p2, 0x6

    const/4 p3, 0x2

    :try_start_0
    new-instance p4, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd;->p:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p4

    goto :goto_4

    :catch_0
    :try_start_1
    sget-object p4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p4, p3, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p4

    :try_start_2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bd;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-virtual {v0, p3, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_2

    :catchall_1
    move-exception p4

    goto :goto_3

    :catch_1
    :try_start_3
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x47efffffe0000000L    # 3.4028234663852886E38

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance v1, Lcom/unionpay/mobile/android/widgets/bd$a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bd;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-direct {v1, p0, v2, p4, p2}, Lcom/unionpay/mobile/android/widgets/bd$a;-><init>(Lcom/unionpay/mobile/android/widgets/bd;Lcom/unionpay/mobile/android/widgets/u;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    invoke-direct {p0, p1, p1}, Lcom/unionpay/mobile/android/widgets/bd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->u()V

    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->ay:Ljava/lang/String;

    new-array p2, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/bd;->r:Ljava/lang/String;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/bd;->s:Ljava/lang/String;

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/bd;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1, p0}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u$a;)V

    return-void

    :goto_3
    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    throw p4

    :goto_4
    invoke-virtual {p1, p3, p2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    throw p4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->t()V

    const v0, -0xf38086

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aw:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bd;->q:Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v1, v2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->aw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/bd;->q:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u5143"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xadae

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v0, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->v()V

    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p2, p1}, Lcom/unionpay/mobile/android/widgets/bd;->a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/aa;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final a(Landroid/text/Editable;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/widgets/aa;->a(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->p()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    new-instance p1, Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd;->s:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/bd;->o:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->ax:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/unionpay/mobile/android/widgets/bd;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/unionpay/mobile/android/widgets/bd;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/bd;->a(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/bd;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
