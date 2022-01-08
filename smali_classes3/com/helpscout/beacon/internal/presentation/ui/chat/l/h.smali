.class public final synthetic Lcom/helpscout/beacon/internal/presentation/ui/chat/l/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->values()[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/h;->a:[I

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->lineItem:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->attachment:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->unfurledMedia:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
