.class public final synthetic Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/a;->a:[I

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->ADDING_FEEDBACK_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->ADDING_FEEDBACK_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SKIPPED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x5

    aput v5, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x6

    aput v5, v0, v1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/a;->b:[I

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->POSITIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->NEUTRAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->NEGATIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
