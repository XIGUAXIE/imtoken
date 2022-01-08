.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatAttachmentStatusConverter;",
        "",
        "",
        "value",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "toChatAttachmentStatus",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "fromChatAttachmentStatus",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Ljava/lang/String;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromChatAttachmentStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;)Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toChatAttachmentStatus(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    move-result-object p1

    return-object p1
.end method
