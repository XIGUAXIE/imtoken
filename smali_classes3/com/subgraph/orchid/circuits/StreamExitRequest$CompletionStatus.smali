.class final enum Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;
.super Ljava/lang/Enum;
.source "StreamExitRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/StreamExitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompletionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum EXIT_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum INTERRUPTED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum STREAM_OPEN_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum SUCCESS:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

.field public static final enum TIMEOUT:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_COMPLETED"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->SUCCESS:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v3, 0x2

    const-string v4, "TIMEOUT"

    invoke-direct {v0, v4, v3}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->TIMEOUT:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v4, 0x3

    const-string v5, "STREAM_OPEN_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->STREAM_OPEN_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v5, 0x4

    const-string v6, "EXIT_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->EXIT_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    new-instance v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v6, 0x5

    const-string v7, "INTERRUPTED"

    invoke-direct {v0, v7, v6}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->INTERRUPTED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    sget-object v8, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    aput-object v8, v7, v1

    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->SUCCESS:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    aput-object v1, v7, v2

    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->TIMEOUT:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    aput-object v1, v7, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->STREAM_OPEN_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    aput-object v1, v7, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->EXIT_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->$VALUES:[Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;
    .locals 1

    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;
    .locals 1

    .line 14
    sget-object v0, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->$VALUES:[Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    return-object v0
.end method
