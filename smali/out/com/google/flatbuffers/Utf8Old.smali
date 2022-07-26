.class public Lcom/google/flatbuffers/Utf8Old;
.super Lcom/google/flatbuffers/Utf8;
.source "Utf8Old.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/flatbuffers/Utf8Old$Cache;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/flatbuffers/Utf8Old$Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-object v0, Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;

    .line 46
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/google/flatbuffers/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/flatbuffers/Utf8;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lcom/google/flatbuffers/Utf8Old$Cache;
    .registers 1

    .line 46
    new-instance v0, Lcom/google/flatbuffers/Utf8Old$Cache;

    invoke-direct {v0}, Lcom/google/flatbuffers/Utf8Old$Cache;-><init>()V

    return-object v0
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 87
    sget-object v0, Lcom/google/flatbuffers/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/flatbuffers/Utf8Old$Cache;

    iget-object v0, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 88
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    add-int v1, p2, p3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    :try_start_19
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 94
    .local v1, "result":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_21
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_19 .. :try_end_21} :catch_22

    return-object v2

    .line 95
    .end local v1    # "result":Ljava/nio/CharBuffer;
    :catch_22
    move-exception v1

    .line 96
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad encoding"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 76
    sget-object v0, Lcom/google/flatbuffers/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/flatbuffers/Utf8Old$Cache;

    .line 77
    .local v0, "cache":Lcom/google/flatbuffers/Utf8Old$Cache;
    iget-object v1, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastInput:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_f

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/Utf8Old;->encodedLength(Ljava/lang/CharSequence;)I

    .line 82
    :cond_f
    iget-object v1, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .registers 9
    .param p1, "in"    # Ljava/lang/CharSequence;

    .line 53
    sget-object v0, Lcom/google/flatbuffers/Utf8Old;->CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/flatbuffers/Utf8Old$Cache;

    .line 54
    .local v0, "cache":Lcom/google/flatbuffers/Utf8Old$Cache;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 55
    .local v1, "estimated":I
    iget-object v2, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_2e

    .line 56
    :cond_22
    const/16 v2, 0x80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    .line 58
    :cond_2e
    iget-object v2, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    iput-object p1, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastInput:Ljava/lang/CharSequence;

    .line 60
    instance-of v2, p1, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_3d

    move-object v2, p1

    check-cast v2, Ljava/nio/CharBuffer;

    goto :goto_41

    .line 61
    :cond_3d
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_41
    nop

    .line 62
    .local v2, "wrap":Ljava/nio/CharBuffer;
    iget-object v3, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 63
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 65
    :try_start_51
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_54
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_51 .. :try_end_54} :catch_55

    .line 68
    goto :goto_5e

    .line 66
    :catch_55
    move-exception v4

    .line 67
    .local v4, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bad character encoding"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 70
    .end local v4    # "e":Ljava/nio/charset/CharacterCodingException;
    :cond_5e
    :goto_5e
    iget-object v4, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    iget-object v4, v0, Lcom/google/flatbuffers/Utf8Old$Cache;->lastOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    return v4
.end method
