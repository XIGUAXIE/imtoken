.class public final Lcom/helpscout/beacon/a/d/d/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/h/d;


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/j/b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/j/b;)V
    .locals 1

    const-string v0, "displayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/b;->a:Lcom/helpscout/beacon/a/d/d/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;->Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification$Companion;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification$Companion;->from(Ljava/util/Map;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/h/b;->a:Lcom/helpscout/beacon/a/d/d/j/b;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/a/d/d/j/b;->b(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationReplyNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process push payload. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public b(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;->Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->isConversation(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
