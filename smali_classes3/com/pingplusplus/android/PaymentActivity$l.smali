.class public final Lcom/pingplusplus/android/PaymentActivity$l;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity;->a(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$l;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$l;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Lcom/pingplusplus/android/PaymentActivity;Z)V

    return-void
.end method
