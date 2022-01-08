.class public Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pushMessagingHandlerLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/helpscout/beacon/a/d/d/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/helpscout/beacon/a/d/d/h/d;

    invoke-static {v0}, Lcom/helpscout/beacon/a/d/a/b;->a(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;->pushMessagingHandlerLazy:Lkotlin/Lazy;

    return-void
.end method

.method public static isBeaconNotification(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;->Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->isBeaconNotification(Ljava/util/Map;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public process(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;->isBeaconNotification(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c;->a:Lcom/helpscout/beacon/a/d/a/c$a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/a/c$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/beacon/a/d/a/c$a;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;->pushMessagingHandlerLazy:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/a/d/d/h/d;

    invoke-interface {p1, p2}, Lcom/helpscout/beacon/a/d/d/h/d;->a(Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "Can\'t process notification as it is not a Beacon Notification"

    invoke-static {v0, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
