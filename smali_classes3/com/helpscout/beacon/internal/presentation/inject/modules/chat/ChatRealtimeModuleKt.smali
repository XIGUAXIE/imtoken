.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\"\u001c\u0010\u0006\u001a\u00020\u00058\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0016\u0010\u000b\u001a\u00020\n8\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;",
        "pusherAuthorizer",
        "Lcom/pusher/client/PusherOptions;",
        "createPusherOptions",
        "(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;)Lcom/pusher/client/PusherOptions;",
        "Lorg/koin/core/module/Module;",
        "chatRealtime",
        "Lorg/koin/core/module/Module;",
        "getChatRealtime",
        "()Lorg/koin/core/module/Module;",
        "",
        "PUSHER_AUTHORIZER",
        "Ljava/lang/String;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final PUSHER_AUTHORIZER:Ljava/lang/String; = "PUSHER_AUTHORIZER"

.field private static final chatRealtime:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt$chatRealtime$1;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt$chatRealtime$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v1, v0, v2, v3}, Lorg/koin/dsl/ModuleKt;->module$default(ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt;->chatRealtime:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final createPusherOptions(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;)Lcom/pusher/client/PusherOptions;
    .locals 2

    const-string v0, "pusherAuthorizer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pusher/client/PusherOptions;->setUseTLS(Z)Lcom/pusher/client/PusherOptions;

    invoke-virtual {v0, p0}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    const-string p0, "helpscout"

    invoke-virtual {v0, p0}, Lcom/pusher/client/PusherOptions;->setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;

    return-object v0
.end method

.method public static final getChatRealtime()Lorg/koin/core/module/Module;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/chat/ChatRealtimeModuleKt;->chatRealtime:Lorg/koin/core/module/Module;

    return-object v0
.end method
