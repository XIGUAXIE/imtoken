.class public final enum Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

.field public static final enum NEGATIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

.field public static final enum NEUTRAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

.field public static final enum POSITIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    const/4 v2, 0x0

    const-string v3, "POSITIVE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->POSITIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->NEUTRAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    const/4 v2, 0x2

    const-string v3, "NEGATIVE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->NEGATIVE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    return-object v0
.end method
