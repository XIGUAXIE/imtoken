.class Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNOS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peel/react/rnos/RNOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field final synthetic this$0:Lcom/peel/react/rnos/RNOS;


# direct methods
.method private constructor <init>(Lcom/peel/react/rnos/RNOS;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->this$0:Lcom/peel/react/rnos/RNOS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/peel/react/rnos/RNOS;Lcom/peel/react/rnos/RNOS$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;-><init>(Lcom/peel/react/rnos/RNOS;)V

    return-void
.end method


# virtual methods
.method public isRegistered()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->this$0:Lcom/peel/react/rnos/RNOS;

    invoke-virtual {p1}, Lcom/peel/react/rnos/RNOS;->updateAndSendOsInfo()V

    :cond_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/peel/react/rnos/RNOS$ConnectivityBroadcastReceiver;->isRegistered:Z

    return-void
.end method
