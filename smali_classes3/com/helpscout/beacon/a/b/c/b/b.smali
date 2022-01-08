.class public final synthetic Lcom/helpscout/beacon/a/b/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->values()[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/a/b/c/b/b;->a:[I

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->FAILED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
