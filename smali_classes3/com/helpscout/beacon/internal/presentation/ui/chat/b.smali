.class public final synthetic Lcom/helpscout/beacon/internal/presentation/ui/chat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I

.field public static final synthetic e:[I

.field public static final synthetic f:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 13

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->a:[I

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ENTRY_POINT:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->NO_AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->NO_AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    sget-object v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->CHAT_ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v8, 0x4

    aput v8, v0, v6

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    sget-object v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v0, v9

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v0, v9

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v0, v9

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v0, v9

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v8, v0, v9

    sget-object v9, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x5

    aput v11, v0, v10

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->d:[I

    sget-object v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ASSIGNED_AGENT_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v3, v0, v11

    sget-object v11, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ASSIGNED_AGENT_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v5, v0, v12

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->e:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v5, v0, v4

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v7, v0, v4

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->f:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    return-void
.end method
