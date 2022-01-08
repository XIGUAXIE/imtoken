.class final Lcom/pingplusplus/android/PaymentActivity$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity$e;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$e$a;->a:Lcom/pingplusplus/android/PaymentActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$e$a;->a:Lcom/pingplusplus/android/PaymentActivity$e;

    iget-object v0, v0, Lcom/pingplusplus/android/PaymentActivity$e;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v0}, Lcom/pingplusplus/android/PaymentActivity;->d(Lcom/pingplusplus/android/PaymentActivity;)V

    return-void
.end method
