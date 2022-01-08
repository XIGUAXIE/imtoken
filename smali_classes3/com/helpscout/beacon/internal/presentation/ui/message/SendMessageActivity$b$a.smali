.class public final enum Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

.field public static final enum COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

.field public static final enum EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

.field public static final enum IDLE:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    const/4 v2, 0x0

    const-string v3, "EXPANDED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    const/4 v2, 0x1

    const-string v3, "COLLAPSED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    const/4 v2, 0x2

    const-string v3, "IDLE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b$a;

    return-object v0
.end method
