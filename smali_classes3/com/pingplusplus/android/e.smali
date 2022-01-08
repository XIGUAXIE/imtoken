.class public final Lcom/pingplusplus/android/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/swwx/paymax/PaymaxCallback;


# instance fields
.field private a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pingplusplus/android/e;->a:Lcom/pingplusplus/android/PaymentActivity;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/swwx/paymax/PayResult;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pingplusplus/android/e;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p2}, Lcom/swwx/paymax/PayResult;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/swwx/paymax/PayResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/pingplusplus/android/e;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "result from lakala is null"

    invoke-virtual {p2, p1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPayFinished(Lcom/swwx/paymax/PayResult;)V
    .locals 3

    const-string v0, "unknown"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/pingplusplus/android/e;->a(Ljava/lang/String;Lcom/swwx/paymax/PayResult;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/swwx/paymax/PayResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/swwx/paymax/PayResult;->getCode()I

    move-result v1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x106a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10cd

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "cancel"

    goto :goto_0

    :cond_1
    :pswitch_1
    const-string v0, "fail"

    :cond_2
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/pingplusplus/android/e;->a(Ljava/lang/String;Lcom/swwx/paymax/PayResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
