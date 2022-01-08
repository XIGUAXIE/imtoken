.class public final Lcom/unionpay/mobile/android/widgets/at;
.super Lcom/unionpay/mobile/android/widgets/aa;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/at;->c:I

    const-string p1, "maxLength"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x17

    :goto_0
    iput p1, p0, Lcom/unionpay/mobile/android/widgets/at;->c:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/at;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    iget p3, p0, Lcom/unionpay/mobile/android/widgets/at;->c:I

    invoke-direct {p2, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/at;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/unionpay/mobile/android/widgets/at;->c:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/at;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_text"

    return-object v0
.end method
