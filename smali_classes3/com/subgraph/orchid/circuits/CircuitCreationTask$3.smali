.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitBuildHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->createCircuitBuildHandler()Lcom/subgraph/orchid/CircuitBuildHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V
    .locals 3

    .line 231
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit completed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$100(Lcom/subgraph/orchid/circuits/CircuitCreationTask;Lcom/subgraph/orchid/Circuit;)V

    .line 233
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$200(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public circuitBuildFailed(Ljava/lang/String;)V
    .locals 3

    .line 237
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit build failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$300(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-void
.end method

.method public connectionCompleted(Lcom/subgraph/orchid/Connection;)V
    .locals 3

    .line 242
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit connection completed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method

.method public connectionFailed(Ljava/lang/String;)V
    .locals 3

    .line 246
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Circuit connection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$3;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-static {p1}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$300(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V

    return-void
.end method

.method public nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 3

    .line 251
    invoke-static {}, Lcom/subgraph/orchid/circuits/CircuitCreationTask;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node added to circuit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return-void
.end method
