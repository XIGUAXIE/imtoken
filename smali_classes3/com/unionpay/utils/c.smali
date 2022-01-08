.class final Lcom/unionpay/utils/c;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "02"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/utils/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "04"

    const-string v1, "22"

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/utils/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
