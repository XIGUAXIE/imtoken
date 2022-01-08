.class public final Lcom/helpscout/beacon/internal/presentation/common/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/o/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/common/c;)Z
    .locals 1

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->h()V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/helpscout/beacon/internal/presentation/common/c;)Z
    .locals 1

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/o/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getDocsEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/o/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getHasPreviousConversations()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
