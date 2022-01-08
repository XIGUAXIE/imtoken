.class final Lcom/pingplusplus/android/PaymentActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$k;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject;->isOne()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject;->getDataCollection()Lcom/pingplusplus/android/PingppDataCollection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$b;->c:Lcom/pingplusplus/android/PingppDataCollection$b;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lcom/pingplusplus/android/PingppDataCollection$b;)V

    sget-object v0, Lcom/pingplusplus/android/PingppObject;->Companion:Lcom/pingplusplus/android/PingppObject$a;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject$a;->a()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/PingppObject;->getDataCollection()Lcom/pingplusplus/android/PingppDataCollection;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity$k;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/pingplusplus/android/PingppDataCollection;

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity$k;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pingplusplus/android/PaymentActivity$k;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lorg/json/JSONObject;)V

    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$b;->b:Lcom/pingplusplus/android/PingppDataCollection$b;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PingppDataCollection;->a(Lcom/pingplusplus/android/PingppDataCollection$b;)V

    :goto_0
    return-void
.end method
