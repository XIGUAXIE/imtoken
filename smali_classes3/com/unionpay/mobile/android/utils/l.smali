.class public final Lcom/unionpay/mobile/android/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simalliance/openmobileapi/SEService$CallBack;


# static fields
.field private static a:Lorg/simalliance/openmobileapi/SEService;


# instance fields
.field private b:Lcom/unionpay/mobile/android/nocard/views/b;

.field private c:Landroid/os/Handler$Callback;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unionpay/mobile/android/utils/m;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/utils/m;-><init>(Lcom/unionpay/mobile/android/utils/l;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->c:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/utils/l;->c:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/l;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/utils/l;)Lcom/unionpay/mobile/android/nocard/views/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/utils/l;->b:Lcom/unionpay/mobile/android/nocard/views/b;

    return-object p0
.end method

.method public static a()Lorg/simalliance/openmobileapi/SEService;
    .locals 1

    sget-object v0, Lcom/unionpay/mobile/android/utils/l;->a:Lorg/simalliance/openmobileapi/SEService;

    return-object v0
.end method


# virtual methods
.method public final serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 2

    const-string p1, "uppay"

    const-string v0, "se service connected"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSEService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/utils/l;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSEService.isConnected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/utils/l;->a:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/SEService;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/utils/l;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
