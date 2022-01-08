.class final Lcom/unionpay/mobile/android/pro/views/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pro/pboc/engine/a;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/h;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/h;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/i;->a:Lcom/unionpay/mobile/android/pro/views/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uppay"

    const-string v1, "deviceReady +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/i;->a:Lcom/unionpay/mobile/android/pro/views/h;

    iget-object v1, v1, Lcom/unionpay/mobile/android/pro/views/h;->s:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/i;->a:Lcom/unionpay/mobile/android/pro/views/h;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/unionpay/mobile/android/pro/views/h;->s:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/i;->a:Lcom/unionpay/mobile/android/pro/views/h;

    iget-object v1, v1, Lcom/unionpay/mobile/android/pro/views/h;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/i;->a:Lcom/unionpay/mobile/android/pro/views/h;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/h;->a(Lcom/unionpay/mobile/android/pro/views/h;)V

    const-string p1, "deviceReady ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
