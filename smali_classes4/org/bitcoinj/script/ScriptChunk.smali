.class public Lorg/bitcoinj/script/ScriptChunk;
.super Ljava/lang/Object;
.source "ScriptChunk.java"


# instance fields
.field public final data:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final opcode:I

.field private startLocationInProgram:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    .line 51
    iput-object p2, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    .line 52
    iput p3, p0, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    return-void
.end method


# virtual methods
.method public decodeOpN()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 81
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    check-cast p1, Lorg/bitcoinj/script/ScriptChunk;

    .line 161
    iget v2, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    iget v3, p1, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    iget v3, p1, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    iget-object p1, p1, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    .line 162
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public equalsOpCode(I)Z
    .locals 1

    .line 56
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getStartLocationInProgram()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 75
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 167
    iget v1, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/script/ScriptChunk;->startLocationInProgram:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOpCode()Z
    .locals 2

    .line 63
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v1, 0x4e

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPushData()Z
    .locals 2

    .line 70
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v1, 0x60

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortestPossiblePushData()Z
    .locals 6

    .line 88
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptChunk;->isPushData()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 89
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 92
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 93
    :cond_2
    array-length v2, v0

    if-ne v2, v1, :cond_6

    .line 94
    aget-byte v0, v0, v3

    if-lt v0, v1, :cond_4

    const/16 v2, 0x10

    if-gt v0, v2, :cond_4

    .line 96
    iget v2, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    add-int/lit8 v0, v0, 0x51

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x81

    if-ne v0, v2, :cond_6

    .line 98
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 100
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v2, v0

    const/16 v4, 0x4c

    if-ge v2, v4, :cond_8

    .line 101
    iget v2, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    array-length v0, v0

    if-ne v2, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 102
    :cond_8
    array-length v2, v0

    const/16 v5, 0x100

    if-ge v2, v5, :cond_a

    .line 103
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-ne v0, v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 104
    :cond_a
    array-length v0, v0

    const/high16 v2, 0x10000

    if-ge v0, v2, :cond_c

    .line 105
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 108
    :cond_c
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget v1, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v1}, Lorg/bitcoinj/script/ScriptOpCodes;->getOpCodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    if-eqz v1, :cond_1

    .line 148
    iget v1, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v1}, Lorg/bitcoinj/script/ScriptOpCodes;->getPushDataName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v2, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_1
    iget v1, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 114
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_6

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    if-eqz v0, :cond_a

    .line 116
    iget v3, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v4, 0x4c

    if-ge v3, v4, :cond_3

    .line 117
    array-length v0, v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 118
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_5

    :cond_3
    const/16 v5, 0xff

    if-ne v3, v4, :cond_5

    .line 120
    array-length v0, v0

    if-gt v0, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 121
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 122
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_5

    :cond_5
    const/16 v4, 0x4d

    if-ne v3, v4, :cond_7

    .line 124
    array-length v0, v0

    const v3, 0xffff

    if-gt v0, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 125
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    and-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_5

    :cond_7
    const/16 v4, 0x4e

    if-ne v3, v4, :cond_9

    .line 129
    array-length v0, v0

    int-to-long v5, v0

    const-wide/16 v7, 0x208

    cmp-long v0, v5, v7

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 130
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 135
    :goto_5
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 133
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unimplemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_a
    iget v0, p0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_6
    return-void
.end method
