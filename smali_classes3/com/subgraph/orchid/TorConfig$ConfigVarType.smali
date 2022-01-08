.class public final enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;
.super Ljava/lang/Enum;
.source "TorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/TorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigVarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/TorConfig$ConfigVarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

.field public static final enum STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 142
    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v1, 0x0

    const-string v2, "INTEGER"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v3, 0x2

    const-string v4, "HS_AUTH"

    invoke-direct {v0, v4, v3}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v4, 0x3

    const-string v5, "BOOLEAN"

    invoke-direct {v0, v5, v4}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v5, 0x4

    const-string v6, "INTERVAL"

    invoke-direct {v0, v6, v5}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v6, 0x5

    const-string v7, "PORTLIST"

    invoke-direct {v0, v7, v6}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v7, 0x6

    const-string v8, "STRINGLIST"

    invoke-direct {v0, v8, v7}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/4 v8, 0x7

    const-string v9, "PATH"

    invoke-direct {v0, v9, v8}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/16 v9, 0x8

    const-string v10, "AUTOBOOL"

    invoke-direct {v0, v10, v9}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/16 v10, 0x9

    const-string v11, "BRIDGE_LINE"

    invoke-direct {v0, v11, v10}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    sget-object v12, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v12, v11, v1

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRING:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v2

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v3

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v4

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v5

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v6

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v7

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v8

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->$VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 1

    .line 142
    const-class v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 1

    .line 142
    sget-object v0, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->$VALUES:[Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-object v0
.end method
