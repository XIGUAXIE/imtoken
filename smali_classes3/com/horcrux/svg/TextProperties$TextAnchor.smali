.class final enum Lcom/horcrux/svg/TextProperties$TextAnchor;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/TextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextAnchor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$TextAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$TextAnchor;

.field public static final enum end:Lcom/horcrux/svg/TextProperties$TextAnchor;

.field public static final enum middle:Lcom/horcrux/svg/TextProperties$TextAnchor;

.field public static final enum start:Lcom/horcrux/svg/TextProperties$TextAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 143
    new-instance v0, Lcom/horcrux/svg/TextProperties$TextAnchor;

    const/4 v1, 0x0

    const-string v2, "start"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/TextProperties$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 144
    new-instance v0, Lcom/horcrux/svg/TextProperties$TextAnchor;

    const/4 v2, 0x1

    const-string v3, "middle"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/TextProperties$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->middle:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 145
    new-instance v0, Lcom/horcrux/svg/TextProperties$TextAnchor;

    const/4 v3, 0x2

    const-string v4, "end"

    invoke-direct {v0, v4, v3}, Lcom/horcrux/svg/TextProperties$TextAnchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->end:Lcom/horcrux/svg/TextProperties$TextAnchor;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 141
    sget-object v5, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    aput-object v5, v4, v1

    sget-object v1, Lcom/horcrux/svg/TextProperties$TextAnchor;->middle:Lcom/horcrux/svg/TextProperties$TextAnchor;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/horcrux/svg/TextProperties$TextAnchor;->$VALUES:[Lcom/horcrux/svg/TextProperties$TextAnchor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextAnchor;
    .locals 1

    .line 141
    const-class v0, Lcom/horcrux/svg/TextProperties$TextAnchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$TextAnchor;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$TextAnchor;
    .locals 1

    .line 141
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->$VALUES:[Lcom/horcrux/svg/TextProperties$TextAnchor;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$TextAnchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$TextAnchor;

    return-object v0
.end method
