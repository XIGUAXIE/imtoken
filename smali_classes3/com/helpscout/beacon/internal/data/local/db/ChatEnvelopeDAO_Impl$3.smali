.class Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$3;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl$3;->this$0:Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE Chat SET agent_id=? WHERE id=?"

    return-object v0
.end method