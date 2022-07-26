.class Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/metadata/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipParser"
.end annotation


# instance fields
.field private final archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

.field private final intBuffer:Ljava/nio/ByteBuffer;

.field private final longBuffer:Ljava/nio/ByteBuffer;

.field private final shortBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;)V
    .registers 4
    .param p1, "archive"    # Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    nop

    .line 121
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->longBuffer:Ljava/nio/ByteBuffer;

    .line 122
    nop

    .line 123
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->intBuffer:Ljava/nio/ByteBuffer;

    .line 124
    nop

    .line 125
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->shortBuffer:Ljava/nio/ByteBuffer;

    .line 128
    iput-object p1, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;Lorg/tensorflow/lite/support/metadata/ZipFile$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;
    .param p2, "x1"    # Lorg/tensorflow/lite/support/metadata/ZipFile$1;

    .line 116
    invoke-direct {p0, p1}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;-><init>(Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;)V

    return-void
.end method

.method static synthetic access$100(Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->parseEntries()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private foundCentralFileheaderSignature()Z
    .registers 6

    .line 145
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getInt()I

    move-result v0

    int-to-long v0, v0

    .line 146
    .local v0, "signature":J
    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private getInt()I
    .registers 3

    .line 164
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->intBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 165
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->intBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 166
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->intBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 167
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->intBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private getLong()J
    .registers 3

    .line 175
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->longBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->longBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 177
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->longBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 178
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->longBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getShort()I
    .registers 3

    .line 153
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->shortBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 154
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    iget-object v1, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->shortBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 155
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->shortBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 156
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->shortBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private locateCentralDirectory()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->size()J

    move-result-wide v0

    const-string v2, "The archive is not a ZIP archive."

    const-wide/16 v3, 0x16

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3b

    .line 198
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->size()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 199
    .local v0, "offsetRecord":J
    iget-object v3, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v3, v0, v1}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 202
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getLong()J

    move-result-wide v3

    .line 203
    .local v3, "endSig":J
    const-wide/32 v5, 0x6054b50

    cmp-long v7, v3, v5

    if-nez v7, :cond_35

    .line 208
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->skipBytes(I)V

    .line 210
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getInt()I

    move-result v2

    int-to-long v5, v2

    .line 212
    .local v5, "offsetDirectory":J
    iget-object v2, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v2, v5, v6}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 213
    return-void

    .line 204
    .end local v5    # "offsetDirectory":J
    :cond_35
    new-instance v5, Ljava/util/zip/ZipException;

    invoke-direct {v5, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v0    # "offsetRecord":J
    .end local v3    # "endSig":J
    :cond_3b
    new-instance v0, Ljava/util/zip/ZipException;

    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCentralDirectory()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->locateCentralDirectory()V

    .line 224
    :goto_8
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->foundCentralFileheaderSignature()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 225
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->parseCentralDirectoryEntry()Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;

    move-result-object v1

    .line 226
    .local v1, "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v1    # "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    goto :goto_8

    .line 229
    :cond_16
    return-object v0
.end method

.method private parseCentralDirectoryEntry()Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->skipBytes(I)V

    .line 239
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getInt()I

    move-result v0

    int-to-long v0, v0

    .line 242
    .local v0, "compressSize":J
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->skipBytes(I)V

    .line 243
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getShort()I

    move-result v2

    .line 246
    .local v2, "fileNameLen":I
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getShort()I

    move-result v3

    .line 247
    .local v3, "extraLen":I
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getShort()I

    move-result v4

    .line 250
    .local v4, "commentLen":I
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->skipBytes(I)V

    .line 251
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getInt()I

    move-result v5

    int-to-long v5, v5

    .line 254
    .local v5, "localHeaderOffset":J
    new-array v7, v2, [B

    .line 255
    .local v7, "fileNameBuf":[B
    iget-object v8, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 256
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 259
    .local v8, "fileName":Ljava/lang/String;
    add-int v9, v3, v4

    invoke-direct {p0, v9}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->skipBytes(I)V

    .line 261
    new-instance v9, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;-><init>(Lorg/tensorflow/lite/support/metadata/ZipFile$1;)V

    .line 262
    .local v9, "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    invoke-virtual {v9, v0, v1}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->setSize(J)V

    .line 263
    invoke-virtual {v9, v5, v6}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->setLocalHeaderOffset(J)V

    .line 264
    invoke-virtual {v9, v8}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->setName(Ljava/lang/String;)V

    .line 266
    return-object v9
.end method

.method private parseEntries()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->parseCentralDirectory()Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    invoke-direct {p0, v0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->parseLocalFileHeaderData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private parseLocalFileHeaderData(Ljava/util/List;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;",
            ">;>;"
        }
    .end annotation

    .line 272
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 274
    .local v0, "nameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;

    .line 275
    .local v2, "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->getLocalHeaderOffset()J

    move-result-wide v3

    .line 276
    .local v3, "offset":J
    iget-object v5, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    const-wide/16 v6, 0x1a

    add-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 279
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getShort()I

    move-result v5

    .line 280
    .local v5, "fileNameLen":I
    invoke-direct {p0}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->getShort()I

    move-result v6

    .line 281
    .local v6, "extraFieldLen":I
    const-wide/16 v7, 0x1c

    add-long/2addr v7, v3

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    int-to-long v9, v5

    add-long/2addr v7, v9

    int-to-long v9, v6

    add-long/2addr v7, v9

    .line 287
    .local v7, "dataOffset":J
    invoke-virtual {v2, v7, v8}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->setDataOffset(J)V

    .line 290
    invoke-virtual {v2}, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 293
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .local v10, "entriesWithTheSameName":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    goto :goto_4f

    .line 295
    .end local v10    # "entriesWithTheSameName":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    :cond_47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .restart local v10    # "entriesWithTheSameName":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_4f
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v2    # "entry":Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;
    .end local v3    # "offset":J
    .end local v5    # "fileNameLen":I
    .end local v6    # "extraFieldLen":I
    .end local v7    # "dataOffset":J
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "entriesWithTheSameName":Ljava/util/List;, "Ljava/util/List<Lorg/tensorflow/lite/support/metadata/ZipFile$ZipEntry;>;"
    goto :goto_9

    .line 301
    :cond_53
    return-object v0
.end method

.method private skipBytes(I)V
    .registers 9
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v0}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position()J

    move-result-wide v0

    .line 307
    .local v0, "currentPosition":J
    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 308
    .local v2, "newPosition":J
    iget-object v4, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v4}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_18

    .line 311
    iget-object v4, p0, Lorg/tensorflow/lite/support/metadata/ZipFile$ZipParser;->archive:Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    invoke-virtual {v4, v2, v3}, Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;->position(J)Lorg/tensorflow/lite/support/metadata/ByteBufferChannel;

    .line 312
    return-void

    .line 309
    :cond_18
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method
