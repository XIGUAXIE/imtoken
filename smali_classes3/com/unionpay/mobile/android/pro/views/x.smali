.class public final Lcom/unionpay/mobile/android/pro/views/x;
.super Lcom/unionpay/mobile/android/pro/views/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/y;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method


# virtual methods
.method public final s()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/x;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
