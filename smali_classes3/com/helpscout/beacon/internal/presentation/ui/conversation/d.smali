.class public final synthetic Lcom/helpscout/beacon/internal/presentation/ui/conversation/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->values()[Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/d;->a:[I

    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->MESSAGE:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->CHAT:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
