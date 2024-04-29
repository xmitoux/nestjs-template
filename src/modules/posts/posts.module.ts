import { Module } from '@nestjs/common';

import { PostsController } from './posts.controller';
import { PostsService } from './posts.service';

import { PrismaService } from '@/common/utils/prisma.service';

@Module({
    controllers: [PostsController],
    providers: [PrismaService, PostsService],
})
export class PostsModule {}
