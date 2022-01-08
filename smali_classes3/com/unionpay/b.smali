.class final Lcom/unionpay/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/UPQuerySEPayInfoCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/unionpay/UPPayAssistEx;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->j()I

    return-void
.end method

.method public final onResult(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p2}, Lcom/unionpay/UPPayAssistEx;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->j()I

    return-void
.end method
