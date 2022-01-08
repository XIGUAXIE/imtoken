.class public Lorg/bitcoin/NativeSecp256k1;
.super Ljava/lang/Object;
.source "NativeSecp256k1.java"


# static fields
.field private static nativeECDSABuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/concurrent/locks/Lock;

.field private static final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final w:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/bitcoin/NativeSecp256k1;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    .line 44
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cleanup()V
    .locals 3

    const-class v0, Lorg/bitcoin/NativeSecp256k1;

    monitor-enter v0

    .line 182
    :try_start_0
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_destroy_context(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 186
    :try_start_3
    sget-object v2, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static cloneContext()J
    .locals 3

    .line 191
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ctx_clone(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    sget-object v2, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static computePubkey([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 148
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 150
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 152
    :cond_1
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 154
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 156
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 157
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 163
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ec_pubkey_create(Ljava/nio/ByteBuffer;J)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 168
    aget-object v0, p0, v2

    .line 169
    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v1, [B

    aget-object v5, p0, v1

    aget-byte v5, v5, v2

    aput-byte v5, v4, v2

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 170
    new-instance v4, Ljava/math/BigInteger;

    new-array v5, v1, [B

    aget-object p0, p0, v1

    aget-byte p0, p0, v1

    aput-byte p0, v5, v2

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 172
    array-length v1, v0

    const-string v4, "Got bad pubkey length."

    invoke-static {v1, v3, v4}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    if-nez p0, :cond_3

    new-array v0, v2, [B

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    .line 165
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static createECDHSecret([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 362
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_0

    array-length v0, p1

    const/16 v4, 0x41

    if-gt v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 364
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    array-length v5, p1

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 366
    :cond_1
    array-length v0, p1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 367
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 368
    sget-object v4, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 370
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 371
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 375
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 377
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v4

    array-length p0, p1

    invoke-static {v0, v4, v5, p0}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ecdh(Ljava/nio/ByteBuffer;JI)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    aget-object p1, p0, v2

    .line 383
    new-instance v0, Ljava/math/BigInteger;

    new-array v4, v1, [B

    aget-object p0, p0, v1

    aget-byte p0, p0, v2

    aput-byte p0, v4, v2

    invoke-direct {v0, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 385
    array-length v0, p1

    const-string v2, "Got bad result length."

    invoke-static {v0, v3, v2}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    const-string v0, "Failed return value check."

    .line 386
    invoke-static {p0, v1, v0}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 379
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static privKeyTweakAdd([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 245
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 247
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 249
    :cond_1
    array-length v0, p0

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 250
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 251
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 253
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 254
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 258
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_privkey_tweak_add(Ljava/nio/ByteBuffer;J)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    aget-object p1, p0, v1

    .line 267
    new-instance v0, Ljava/math/BigInteger;

    new-array v3, v2, [B

    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 268
    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v2

    aput-byte p0, v4, v1

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 270
    array-length v1, p1

    const-string v3, "Got bad pubkey length."

    invoke-static {v1, v0, v3}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    const-string v0, "Failed return value check."

    .line 272
    invoke-static {p0, v2, v0}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 262
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static privKeyTweakMul([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 208
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_2

    .line 210
    :cond_1
    array-length v0, p0

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 212
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 215
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 221
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_privkey_tweak_mul(Ljava/nio/ByteBuffer;J)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    aget-object p1, p0, v1

    .line 228
    new-instance v0, Ljava/math/BigInteger;

    new-array v3, v2, [B

    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 229
    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v2

    aput-byte p0, v4, v1

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 231
    array-length v1, p1

    const-string v3, "Got bad pubkey length."

    invoke-static {v1, v0, v3}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    const-string v0, "Failed return value check."

    .line 233
    invoke-static {p0, v2, v0}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 223
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static pubKeyTweakAdd([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 284
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq v0, v3, :cond_1

    array-length v0, p0

    const/16 v3, 0x41

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 286
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 288
    :cond_2
    array-length v0, p0

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 290
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 292
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 299
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v3

    array-length p0, p0

    invoke-static {v0, v3, v4, p0}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_pubkey_tweak_add(Ljava/nio/ByteBuffer;JI)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 304
    aget-object p1, p0, v1

    .line 306
    new-instance v0, Ljava/math/BigInteger;

    new-array v3, v2, [B

    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 307
    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v2

    aput-byte p0, v4, v1

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 309
    array-length v1, p1

    const-string v3, "Got bad pubkey length."

    invoke-static {v1, v0, v3}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    const-string v0, "Failed return value check."

    .line 311
    invoke-static {p0, v2, v0}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 301
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static pubKeyTweakMul([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 323
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-eq v0, v3, :cond_1

    array-length v0, p0

    const/16 v3, 0x41

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 325
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 327
    :cond_2
    array-length v0, p0

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 328
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 329
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 331
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 332
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 338
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v3

    array-length p0, p0

    invoke-static {v0, v3, v4, p0}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_pubkey_tweak_mul(Ljava/nio/ByteBuffer;JI)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 343
    aget-object p1, p0, v1

    .line 345
    new-instance v0, Ljava/math/BigInteger;

    new-array v3, v2, [B

    aget-object v4, p0, v2

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 346
    new-instance v3, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v2

    aput-byte p0, v4, v1

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 348
    array-length v1, p1

    const-string v3, "Got bad pubkey length."

    invoke-static {v1, v0, v3}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    const-string v0, "Failed return value check."

    .line 350
    invoke-static {p0, v2, v0}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 340
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static declared-synchronized randomize([B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    const-class v0, Lorg/bitcoin/NativeSecp256k1;

    monitor-enter v0

    .line 397
    :try_start_0
    array-length v1, p0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 399
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 401
    :cond_2
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 402
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 403
    sget-object v2, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 405
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 406
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 408
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :try_start_1
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_context_randomize(Ljava/nio/ByteBuffer;J)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v4, :cond_4

    const/4 v3, 0x1

    .line 412
    :cond_4
    :try_start_2
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 410
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 412
    :try_start_3
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static schnorrSign([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 417
    array-length v0, p0

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 419
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 421
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 422
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 423
    sget-object v4, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 425
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 426
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 431
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 433
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_schnorr_sign(Ljava/nio/ByteBuffer;J)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    aget-object p1, p0, v3

    .line 439
    new-instance v0, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v3

    aput-byte p0, v4, v3

    invoke-direct {v0, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 441
    array-length v0, p1

    const-string v2, "Got bad signature length."

    invoke-static {v0, v1, v2}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    if-nez p0, :cond_2

    new-array p1, v3, [B

    :cond_2
    return-object p1

    :catchall_0
    move-exception p0

    .line 435
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static secKeyVerify([B)Z
    .locals 5

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 123
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 125
    :cond_1
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 127
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 130
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ec_seckey_verify(Ljava/nio/ByteBuffer;J)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v2, :cond_3

    const/4 v1, 0x1

    .line 136
    :cond_3
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception p0

    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static native secp256k1_context_randomize(Ljava/nio/ByteBuffer;J)I
.end method

.method private static native secp256k1_ctx_clone(J)J
.end method

.method private static native secp256k1_destroy_context(J)V
.end method

.method private static native secp256k1_ec_pubkey_create(Ljava/nio/ByteBuffer;J)[[B
.end method

.method private static native secp256k1_ec_pubkey_parse(Ljava/nio/ByteBuffer;JI)[[B
.end method

.method private static native secp256k1_ec_seckey_verify(Ljava/nio/ByteBuffer;J)I
.end method

.method private static native secp256k1_ecdh(Ljava/nio/ByteBuffer;JI)[[B
.end method

.method private static native secp256k1_ecdsa_sign(Ljava/nio/ByteBuffer;J)[[B
.end method

.method private static native secp256k1_ecdsa_verify(Ljava/nio/ByteBuffer;JII)I
.end method

.method private static native secp256k1_privkey_tweak_add(Ljava/nio/ByteBuffer;J)[[B
.end method

.method private static native secp256k1_privkey_tweak_mul(Ljava/nio/ByteBuffer;J)[[B
.end method

.method private static native secp256k1_pubkey_tweak_add(Ljava/nio/ByteBuffer;JI)[[B
.end method

.method private static native secp256k1_pubkey_tweak_mul(Ljava/nio/ByteBuffer;JI)[[B
.end method

.method private static native secp256k1_schnorr_sign(Ljava/nio/ByteBuffer;J)[[B
.end method

.method public static sign([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 85
    array-length v0, p0

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v1, :cond_2

    .line 89
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    sget-object v1, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 101
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide p0

    invoke-static {v0, p0, p1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ecdsa_sign(Ljava/nio/ByteBuffer;J)[[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    aget-object p1, p0, v3

    .line 107
    new-instance v0, Ljava/math/BigInteger;

    new-array v1, v2, [B

    aget-object v4, p0, v2

    aget-byte v4, v4, v3

    aput-byte v4, v1, v3

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 108
    new-instance v1, Ljava/math/BigInteger;

    new-array v4, v2, [B

    aget-object p0, p0, v2

    aget-byte p0, p0, v2

    aput-byte p0, v4, v3

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    .line 110
    array-length v1, p1

    const-string v2, "Got bad signature length."

    invoke-static {v1, v0, v2}, Lorg/bitcoin/NativeSecp256k1Util;->assertEquals(IILjava/lang/String;)V

    if-nez p0, :cond_3

    new-array p1, v3, [B

    :cond_3
    return-object p1

    :catchall_0
    move-exception p0

    .line 103
    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static verify([B[B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoin/NativeSecp256k1Util$AssertFailException;
        }
    .end annotation

    .line 56
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x208

    const/16 v4, 0x20

    if-ne v0, v4, :cond_0

    array-length v0, p1

    if-gt v0, v3, :cond_0

    array-length v0, p2

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 58
    sget-object v0, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 60
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    sget-object v3, Lorg/bitcoin/NativeSecp256k1;->nativeECDSABuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 65
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 71
    :try_start_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->getContext()J

    move-result-wide v3

    array-length p0, p1

    array-length p1, p2

    invoke-static {v0, v3, v4, p0, p1}, Lorg/bitcoin/NativeSecp256k1;->secp256k1_ecdsa_verify(Ljava/nio/ByteBuffer;JII)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v2, :cond_3

    const/4 v1, 0x1

    .line 73
    :cond_3
    sget-object p0, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception p0

    sget-object p1, Lorg/bitcoin/NativeSecp256k1;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method
