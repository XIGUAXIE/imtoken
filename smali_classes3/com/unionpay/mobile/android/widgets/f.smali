.class public final Lcom/unionpay/mobile/android/widgets/f;
.super Lcom/unionpay/mobile/android/widgets/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/f;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_certId"

    return-object v0
.end method
