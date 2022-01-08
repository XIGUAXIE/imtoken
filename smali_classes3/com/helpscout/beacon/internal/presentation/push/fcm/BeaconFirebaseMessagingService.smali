.class public final Lcom/helpscout/beacon/internal/presentation/push/fcm/BeaconFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/push/fcm/BeaconFirebaseMessagingService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "",
        "onCreate",
        "()V",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "remoteMessage",
        "onMessageReceived",
        "(Lcom/google/firebase/messaging/RemoteMessage;)V",
        "",
        "refreshedToken",
        "onNewToken",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;",
        "a",
        "Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;",
        "getProcessor",
        "()Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;",
        "setProcessor",
        "(Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;)V",
        "processor",
        "<init>",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public a:Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onCreate()V

    new-instance v0, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;

    invoke-direct {v0}, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/BeaconFirebaseMessagingService;->a:Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->logsEnabled()Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push Payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;->isBeaconNotification(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "BeaconPushNotificationsP\u2026.isBeaconNotification(it)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/BeaconFirebaseMessagingService;->a:Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;

    if-nez p1, :cond_0

    const-string v1, "processor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/helpscout/beacon/ui/BeaconPushNotificationsProcessor;->process(Landroid/content/Context;Ljava/util/Map;)Z

    :cond_1
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "refreshedToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/Beacon;->setFirebaseCloudMessagingToken(Ljava/lang/String;)V

    return-void
.end method
