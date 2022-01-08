.class final Lcom/unionpay/mobile/android/nocard/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/unionpay/mobile/android/net/d;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unionpay/mobile/android/net/d;-><init>(Ljava/lang/String;[B)V

    new-instance v1, Lcom/unionpay/mobile/android/net/c;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/utils/e;->c:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/net/c;->a()I

    return-void
.end method
